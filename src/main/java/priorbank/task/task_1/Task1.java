package priorbank.task.task_1;

import java.util.regex.Pattern;

public class Task1 {

    public static void main(String[] args) {
        Parent parent = new Parent();
        parent.print();
        Parent child = new Child();
        child.print();
    }
}

class Child extends Parent {

    public Child() {
        this.fio = "АН'НА-МАРИЯ оглы";
    }

}

class Parent {

    protected String fio;

    public Parent() {
        this.fio = "анна мария оглы";
    }

    public void print() {
        System.out.println(this instanceof Child ? formatStringForChild(fio) : fio.concat("1"));
    }

    private String formatStringForChild(String fio) {
        fio = fio.toLowerCase().trim();
        StringBuilder sb = new StringBuilder(fio);
        char[] chars = fio.toCharArray();
        for (int i = 0; i < chars.length; i++) {
            if (i == 0) {
                replaceCharInBuilder(sb, chars, 0);
            }
            if (Pattern.matches("[\\W, \\s]", String.valueOf(chars[i]))) {
                replaceCharInBuilder(sb, chars, i + 1);
            }
        }
        return sb.toString();
    }

    private void replaceCharInBuilder(StringBuilder sb, char[] chars, int index) {
        sb.deleteCharAt(index);
        sb.insert(index, Character.toUpperCase(chars[index]));
    }
}