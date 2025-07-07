#include <inttypes.h>

class Debouncer
{
  unsigned long previous_millis;
  uint16_t interval_millis;
  uint8_t state;
  unsigned long stateChangeLastTime;
  unsigned long durationOfPreviousState;
};


class Bounce : public Debouncer
{
  uint8_t pin;
};

struct myButton {
  Bounce BtnBounce;
  long buttonPressTimeStamp;
  long buttonReleaseTimeStamp;
  int buttonNumber;                 //Physical position on the board
  int ArduinoPin {8};
  int ShiftRegisterLEDPin[2] {8,8};
  bool buttonPressed {false};       //Was the button Pressed during the loop
  bool colorStatus[2] {0, 0};   //2 because 2 color per button
  bool BtnLongPress {false};
};

constexpr static int NUM_BUTTONS = 10;
constexpr static int NUM_PAGES = 4;


struct myPage {
  struct myButton ListObjButton[NUM_BUTTONS];
  int pageNumber {99};
  int HXmode {98};
};



struct myPage ListObjPage[NUM_PAGES];
/*
template <int T>
struct size;

size<sizeof(ListObjPage)> size_in_bytes;
*/

int main()
{
#pragma clang diagnostic push
#pragma ide diagnostic ignored "EndlessLoop"
  while (true)
  {

  }
#pragma clang diagnostic pop
}