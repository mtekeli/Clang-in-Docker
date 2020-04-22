#include <compare>

struct MyInt {
  int value;
  auto operator<=>(const MyInt&) const = default;
};

int main() {
    constexpr MyInt int1 = {5};
    constexpr MyInt int2 = {5};

    static_assert(int1 == int2);
}