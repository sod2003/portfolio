package lambdas;

@FunctionalInterface
public interface BinaryOperation<Integer> {

	int apply(int a, int b);
}