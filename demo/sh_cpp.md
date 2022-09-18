```cpp
class MyBoard : public Board
{
public:
    MyBoard(void);
    virtual ~MyBoard();

    /**
     * \brief Init level 2
     */
    virtual bool Init_level2(void);
};

bool MyBoard::Init_level2(void)
{
    // a comment
    bool usePSRAM = psramFound();
    if (!espCam.Initialize(usePSRAM)) {
        log_e("Camera initialization failed !");
        espCam.Deinit(); /* another comment */
        if (!espCam.Initialize(usePSRAM)) {
            log_e("Camera reinitialization failed !");
        }
    }

    setupTHSensorOK = thSensor.IsPresent();
    if (setupTHSensorOK) {
        thSensor.ReadInit();
    }

    return true;
}
```
