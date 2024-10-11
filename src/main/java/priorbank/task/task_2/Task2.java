package priorbank.task.task_2;

import java.util.HashMap;
import java.util.Map;

public class Task2 {

    private static final String INPUT_STRING = """
            <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
            <DeliverySMS>
                <PackNum>16692535</PackNum>
                <ProvID>2</ProvID>
                <SMS>
                    <DBSMSId>146920910</DBSMSId>
                    <CrmID>0</CrmID>
                    <ServiceType>6</ServiceType>
                    <PhoneTarget>375336110000</PhoneTarget>
                    <PhoneSource>1200</PhoneSource>
                    <Message>Priorbank 10/07 18:00. Code: ШиФР po karte DK0500. Spravka: 80172890000</Message>
                    <SendStart>0</SendStart>
                    <SendStop>1439</SendStop>
                    <Priority>0</Priority>
                </SMS>
                <SMS>
                    <DBSMSId>146920909</DBSMSId>
                    <CrmID>0</CrmID>
                    <ServiceType>4</ServiceType>
                    <PhoneTarget>375298810000</PhoneTarget>
                    <PhoneSource>1200</PhoneSource>
                    <Message>Priorbank 10/07 18:00. M-kod=H000, Platezh s DK8800, schet platezha 000000000. Summa 5.00 BYN. Spravka: 487 VhGfTg00000</Message>\s
                    <SendStart>0</SendStart>
                    <SendStop>1439</SendStop>
                    <Priority>0</Priority>
                </SMS>
            </DeliverySMS>""";

    // first mistake: replace russian 'C' for english 'C' for correct calculate start position.
    private static final String MESSAGE_CVV_PREFIX = "Code";
    private static final String MESSAGE_CVV_POSTFIX = " ";
    private static final String MESSAGE_START = "<Message>";
    private static final String MESSAGE_END = "</Message>";

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        System.out.println(maskCipherCVCInPack(INPUT_STRING));
    }

/**
 * Маскирует шифр CVV в тексте всех сообщений пачки (для записи такого варианта в лог).
 *
 * @param xml
 * @return
}
 */
private static String maskCipherCVCInPack(String xml) {
    Map<String, String> replaces = new HashMap<>();//набор сообщения для замены
    String buf = xml;
    int startPos = buf.indexOf(MESSAGE_START);

    while (startPos > 0) {
        buf = buf.substring(startPos, buf.length());
        int endPos = buf.indexOf(MESSAGE_END);
        int tailLength = MESSAGE_END.length();
        //если по какой-то причине нет завершающего тега, то считаем всю оставшуюся строку сообщением с CVV
        if (endPos <= 0) {
            endPos = buf.length() - 1;
            tailLength = 0;
        }
        String message = buf.substring(0, endPos + tailLength);

        //second mistake: each message will be processed, but need process messages only with CVV
        String masked = message;
        if (message.contains(MESSAGE_CVV_PREFIX)) {
            masked = maskCipherCVCInMsg(message);
        }

        if (!message.equals(masked)) {
            replaces.put(message, masked);
        }

        startPos = buf.indexOf(MESSAGE_START, endPos + MESSAGE_END.length());
    }

    //в оригинальной строке выполняем замены
    for (Map.Entry<String, String> rec : replaces.entrySet()) {
        xml = xml.replace(rec.getKey(), rec.getValue());
    }

    return xml;
}

    /**
     * Маскирует шифр CVV в тексте одного сообщения смс (для записи такого варианта в лог). Ожидается, что текст
     * сообщения в тегах &lt;Message&gt;&lt;/Message&gt; находится (если это не так и после шифра нет пробелов, то
     * маскирование всё равно будет выполнено, замаскировав чуть больше, для надежности)
     *
     * @param message смс с зашифрованным CVV
     * @return
     */
    private static String maskCipherCVCInMsg(String message) {

        int startFrom = 0;
        String mask = "---";
        int cipherLength;

        int startPos = message.toUpperCase().indexOf(MESSAGE_CVV_PREFIX.toUpperCase(), startFrom);
        startPos += MESSAGE_CVV_PREFIX.length() + 2; //на ": " добавляем 2
        int endPos = message.indexOf(MESSAGE_CVV_POSTFIX, startPos);
        if (endPos > 0) {
            cipherLength = endPos - startPos;
        } else {
            cipherLength = message.length() - startPos - MESSAGE_END.length();
        }

        message = message.substring(0, startPos) + mask + message.substring(startPos + cipherLength, message.length());
        return message;
    }
}