package priorbank.task.task_3;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Iterator;

public class Task3 {

    public static void main(String[] args) {
        Iterator numberIterator = process(Arrays.asList(22, 22, 24, 25, 25, 66, 67, 123, 124, 125, 8000, 8000, 80000, 90000).iterator(), 23);
        numberIterator.forEachRemaining(System.out::println);
    }

    /**
     * Возвращает итератор, который позволяет обойти только часть source,
     * ограниченную number, оставляя только элементы, значение которых меньше number
     *
     * @param source неубывающая бесконечная последовательность чисел.
     *               бесконечная - значит нельзя пытаться обработать source,
     *               например, использовать копирование итератора, удаление элементов и т.д.
     * @param number значение для отделения хвоста итератора
     *               <p>
     *               Пример:
     *               на вход подаётся бесконечная последовательность типа
     *               [22,22,24,25,25,66,67 ... 8000, 8000, 80000, 90000 ...]
     *               доступная для обхода часть source
     *               при number = 90000:
     *               [22,22,24,25,25,66,67 ... 8000, 8000, 80000]
     *               при number = 23:
     *               [22,22]
     * @return
     */
    public static Iterator process(Iterator source, Number number) {
        return new LimitedIterator(source, number);
    }

    static class LimitedIterator implements Iterator<Number> {
        private final Iterator<Number> source;
        private final Number limit;
        private Number nextElement;

        public LimitedIterator(Iterator<Number> source, Number limit) {
            this.source = source;
            this.limit = limit;
            advance();
        }

        private void advance() {
            while (source.hasNext()) {
                Number current = source.next();
                if (current.doubleValue() < limit.doubleValue()) {
                    nextElement = current;
                    return;
                }
            }
            nextElement = null;
        }

        @Override
        public boolean hasNext() {
            return nextElement != null;
        }

        @Override
        public Number next() {
            Number result = nextElement;
            advance();
            return result;
        }
    }
}
