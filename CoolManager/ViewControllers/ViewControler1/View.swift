import UIKit
class View1ViewController: UIViewController, View1View {
    var identifier:String = ""
    var presenter: View1Presenter!
    var offsetX: CGFloat = 130
    var offsetY: CGFloat = 0
    
    override func viewDidLoad() {
        setupView()
        super.viewDidLoad()
        presenter.setView(self)
        presenter.viewDidLoad()
    }
    
    func setTemperature(_ value: String) {
        lbl_Temperature.text = value
    }
    
    func setTemperatureSetPoint(_ value: String) {
        lbl_Temperature_SetPoint.text = value
    }
    
    func setLightStatus(_ status: Bool) {
        let imageName = status ? "icono-focoOn.png" : "icono-focoOff.png"
        img_Light.image = UIImage(named: imageName)
    }

    func setDoorStatus(_ status: Bool) {
        let imageName = UIImage(named: status ? "icono-doorOpen.png" : "icono-doorClose.png")
        img_door.image =  imageName
    }

    func setResistenceStatus(_ status: Bool) {
        let imageName = status ? "icono-defrostOn.png" : "icono-defrostOff.png"
        img_resistence.image = UIImage(named: imageName)
    }

    func setCompressorStatus(_ status: Bool) {
        let imageName = status ? "icono-compressorOn.png" : "icono-compressorOff.png"
        img_compressor.image = UIImage(named: imageName)
    }
    
    func updateImageSetPoint(_ value:String){
        setPointImageView.image = UIImage(named: value)
    }
    
    @objc func clickedDown(){
        presenter.downScaleSetPoint()
    }
    
    @objc func clickedUp(){
        presenter.upScaleSetPoint()
    }
    
    

    lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.semanticContentAttribute = .forceLeftToRight
        imageView.frame = view.frame
        imageView.image = UIImage(named: "fondo.jpg")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = true
        imageView.tag = 14
        return imageView
    }()
    
    
    
    lazy var settingsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "fondo-settings2.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.tag = 7
        return imageView
    }()
    
    lazy var indicatorsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "fondo-indicadores2.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.tag = 8
        return imageView
    }()

    lazy var graphFrameImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "marco-grafica.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.tag = 9
        return imageView
    }()
    
    
    
    
    lazy var setPointImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "SETPOINT-42--0.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.tag = 11
        return imageView
    }()
    
    lazy var lbl_Temperature: UILabel = {
        let label = UILabel()
        label.isOpaque = false
        label.clipsToBounds = true
        label.contentMode = .left
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 10
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        label.font = UIFont.systemFont(ofSize: 90)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.highlightedTextColor = nil
        label.isUserInteractionEnabled = false
        label.tag = 37
        return label
    }()

    lazy var lbl_Temperature_SetPoint: UILabel = {
        let label = UILabel()
        label.isOpaque = false
        label.clipsToBounds = true
        label.contentMode = .left
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 10
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        label.font = UIFont.systemFont(ofSize: 90)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.highlightedTextColor = nil
        label.isUserInteractionEnabled = false
        label.tag = 37
        label.text = ""
        return label
    }()
    
    
    lazy var img_Light: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "icono-focoOff.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.tag = 38
        return imageView
    }()
    
    
    
    lazy var img_resistence: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "icono-defrostOff.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.tag = 39
        return imageView
    }()
    
    
    lazy var img_door: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "icono-doorClose.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.tag = 40
        return imageView
    }()
    
    lazy var img_compressor: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "icono-compressorOff.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.restorationIdentifier = "IMG_INDICADOR_COMPRESSOR"
        imageView.tag = 41
        return imageView
    }()
    
    

    
    lazy var ligthLabel: UILabel = {
        let label = UILabel()
        label.isOpaque = false
        label.clipsToBounds = true
        label.isUserInteractionEnabled = false
        label.contentMode = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 10
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "LIGTH"
        label.font = UIFont.systemFont(ofSize: 17)
        label.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        return label
    }()
    
    

    // Etiqueta DEFROST
    lazy var defrostLabel: UILabel = {
        let label = UILabel()
        label.isOpaque = false
        label.clipsToBounds = true
        label.isUserInteractionEnabled = false
        label.contentMode = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 10
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "DEFROST"
        label.font = UIFont.systemFont(ofSize: 17)
        label.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        return label
    }()

    
    
    // Etiqueta DOOR OPEN
    lazy var doorOpenLabel: UILabel = {
        let label = UILabel()
        label.isOpaque = false
        label.clipsToBounds = true
        label.isUserInteractionEnabled = false
        label.contentMode = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 10
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "DOOR OPEN"
        label.font = UIFont.systemFont(ofSize: 17)
        label.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        return label
    }()

    // Etiqueta COMPRESSOR
    lazy var compressorLabel: UILabel = {
        let label = UILabel()
        label.isOpaque = false
        label.clipsToBounds = true
        label.isUserInteractionEnabled = false
        label.contentMode = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 10
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "COMPRESSOR"
        label.font = UIFont.systemFont(ofSize: 17)
        label.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        return label
    }()

    lazy var tituloCentroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = false
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "titulo-centro.png")
        return imageView
    }()

    // Etiqueta adicional
    lazy var lbl_setPointValue: UILabel = {
        let label = UILabel()
        label.isOpaque = false
        label.clipsToBounds = true
        label.isUserInteractionEnabled = false
        label.contentMode = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 10
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 47)
        label.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        return label
    }()

    lazy var btn_send: UIButton = {
        let button = UIButton(type: .system)
        button.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        button.isOpaque = false
        button.contentMode = .scaleToFill
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(named: "boton-setpoint-activo.png"), for: .normal)
        button.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.setTitleShadowColor(UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1), for: .normal)
        let titleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 17),
            .foregroundColor: UIColor.white,
            .paragraphStyle: {
                let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.lineBreakMode = .byTruncatingMiddle
                return paragraphStyle
            }()
        ]
        let attributedTitle = NSAttributedString(string: "SEND", attributes: titleAttributes)
        button.setAttributedTitle(attributedTitle, for: .normal)
        return button
    }()
    
    
    // Botón
    lazy var btn_set_point_up: UIButton = {
        let button = UIButton(type: .system)
        button.isOpaque = false
        button.contentMode = .scaleToFill
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byTruncatingMiddle
        let attributes: [NSAttributedString.Key: Any] = [
            .paragraphStyle: paragraphStyle
        ]
        button.setAttributedTitle(NSAttributedString(string: "", attributes: attributes), for: .normal)
        button.setBackgroundImage(UIImage(named: "setpoint-flecha-arriba-normal.png"), for: .normal)
        button.setTitleShadowColor(UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1), for: .normal)
        button.addTarget(self, action: #selector(clickedUp), for: .touchUpInside)
        return button
    }()
    
    private let btn_set_point_down: UIButton = {
        let button = UIButton(type: .system)
        button.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        button.contentMode = .scaleToFill
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byTruncatingMiddle
        let attributes: [NSAttributedString.Key: Any] = [
            .paragraphStyle: paragraphStyle
        ]
        button.setAttributedTitle(NSAttributedString(string: "", attributes: attributes), for: .normal)
        button.setBackgroundImage(UIImage(named: "setpoint-flecha-abajo-normal.png"), for: .normal)
        button.setTitleShadowColor(UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1), for: .normal)
        button.addTarget(self, action: #selector(clickedDown), for: .touchUpInside)
        return button
    }()

    

    // Componente: Label
    private let lbl_temperature: UILabel = {
        let label = UILabel()
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        label.isOpaque = false
        label.clipsToBounds = true
        label.isUserInteractionEnabled = false
        label.contentMode = .left
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "TEMPERATURE"
        return label
    }()
    

    // Componente: ImageView
    private let imageView83: UIImageView = {
        let imageView = UIImageView()
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "titulo-izq.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    

    // Componente: ImageView
    private let imageView84: UIImageView = {
        let imageView = UIImageView()
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "titulo-der.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    

    private let imageView159: UIImageView = {
        let imageView = UIImageView()
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    
    // Componente: Label
    private let lbl_log: UILabel = {
        let label = UILabel()
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        label.isOpaque = false
        label.clipsToBounds = true
        label.isUserInteractionEnabled = false
        label.contentMode = .left
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "LOG :"
        return label
    }()
    
    

    // Componente: ImageView
    private let img_title_home: UIImageView = {
        let imageView = UIImageView()
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "TITULO-HOME.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    

    private let lbl_digital_temperature_indicator: UILabel = {
        let label = UILabel()
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        label.isOpaque = false
        label.clipsToBounds = true
        label.contentMode = .left
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "CDT - Digital Temperature Control"
        return label
    }()
    

    // Componente: Label
    private let lbl_chef: UILabel = {
        let label = UILabel()
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        label.isOpaque = false
        label.clipsToBounds = true
        label.isUserInteractionEnabled = false
        label.contentMode = .left
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "CHEF"
        return label
    }()

    // Componente: Label
    private let lbl_mode: UILabel = {
        let label = UILabel()
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        label.isOpaque = false
        label.clipsToBounds = true
        label.isUserInteractionEnabled = false
        label.contentMode = .left
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "MODE"
        return label
    }()
    

    private let lbl_settings: UILabel = {
        let label = UILabel()
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        label.isOpaque = false
        label.clipsToBounds = true
        label.isUserInteractionEnabled = false
        label.contentMode = .left
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "SETTINGS"
        return label
    }()
    

    // Componente: Label
    private let lbl_indicators: UILabel = {
        let label = UILabel()
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        label.isOpaque = false
        label.clipsToBounds = true
        label.isUserInteractionEnabled = false
        label.contentMode = .left
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "INDICATORS"
        return label
    }()

    // Componente: Label
    private let lbl_set_point: UILabel = {
        let label = UILabel()
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        label.isOpaque = false
        label.clipsToBounds = true
        label.isUserInteractionEnabled = false
        label.contentMode = .left
        label.textAlignment = .center
        label.lineBreakMode = .byTruncatingTail
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "SET POINT"
        return label
    }()
    
    func setupView(){
        view.addSubview(backgroundImageView)

        // settingsImageView
        view.addSubview(settingsImageView)

        // indicatorsImageView
        view.addSubview(indicatorsImageView)

        // graphFrameImageView
        view.addSubview(graphFrameImageView)

        // setPointImageView
        view.addSubview(setPointImageView)

        // textLabel
        view.addSubview(lbl_Temperature)

        // focusOffImageView
        view.addSubview(img_Light)

        // defrostOffImageView
        view.addSubview(img_resistence)

        // doorCloseImageView
        view.addSubview(img_door)

        // compressorOffImageView
        view.addSubview(img_compressor)

        // ligthLabel
        view.addSubview(ligthLabel)

        // defrostLabel
        view.addSubview(defrostLabel)

        // doorOpenLabel
        view.addSubview(doorOpenLabel)

        // compressorLabel
        view.addSubview(compressorLabel)

        // tituloCentroImageView
        view.addSubview(tituloCentroImageView)

        // additionalLabel
        view.addSubview(lbl_setPointValue)

        // button219
        view.addSubview(btn_send)

        // button
        view.addSubview(btn_set_point_up)

        // button61
        view.addSubview(btn_set_point_down)

        // label82
        view.addSubview(lbl_temperature)

        // imageView83
        view.addSubview(imageView83)

        // imageView84
        view.addSubview(imageView84)

        // imageView159
        view.addSubview(imageView159)

        // label160
        view.addSubview(lbl_log)


        // imageView162
        view.addSubview(img_title_home)

        // label163
        view.addSubview(lbl_digital_temperature_indicator)

        // label164
        view.addSubview(lbl_chef)

        // label165
        view.addSubview(lbl_mode)

        // label210
        view.addSubview(lbl_settings)

        // label211
        view.addSubview(lbl_indicators)

        // label214
        view.addSubview(lbl_set_point)
        
        // lbl_Temperature_SetPoint
        setPointImageView.addSubview(lbl_Temperature_SetPoint)
        
        img_door.frame = CGRect(x: 627, y: 273, width: 65, height: 57)
        img_resistence.frame = CGRect(x: 627, y: 185, width: 65, height: 57)
        img_Light.frame = CGRect(x: 627, y: 100, width: 65, height: 57)
        lbl_set_point.frame = CGRect(x: 286, y: 374, width: 127, height: 21)
        lbl_indicators.frame = CGRect(x: 500, y: 49, width: 200, height: 21)
        lbl_indicators.center.x = img_door.center.x
        lbl_chef.frame = CGRect(x: -54, y: 374, width: 230, height: 21)
        lbl_mode.frame = CGRect(x: 12, y: 222, width: 86, height: 21)
        lbl_mode.center.x = lbl_chef.center.x
        lbl_log.frame = CGRect(x: -23, y: 139, width: 86, height: 21)
        lbl_log.center.x = lbl_chef.center.x
        lbl_settings.frame = CGRect(x: -73, y: 49, width: 186, height: 21)
        lbl_settings.center.x = lbl_chef.center.x
        lbl_digital_temperature_indicator.frame = CGRect(x: 198, y: 466, width: 322, height: 21)
        img_title_home.frame = CGRect(x: 177, y: 459, width: 364, height: 34)
        imageView159.frame = CGRect(x: 0.0, y: 268, width: 113, height: 91)
        imageView84.frame = CGRect(x: 586, y: 44, width: 178, height: 31)
        imageView83.frame = CGRect(x: -46, y: 44, width: 173, height: 31)
        lbl_temperature.frame = CGRect(x: 249, y: 49, width: 200, height: 21)
        btn_set_point_down.frame = CGRect(x: 470, y: 333, width: 58, height: 56)
        btn_set_point_up.frame = CGRect(x: 470, y: 233, width: 58, height: 56)
        btn_send.frame = CGRect(x: 264, y: 409, width: 164, height: 42)
        lbl_Temperature.frame = CGRect(x: 176, y: 90, width: 364, height: 99)
        setPointImageView.frame = CGRect(x: 225, y: 200, width: 244, height: 193)
        graphFrameImageView.frame = CGRect(x: -44, y: 485, width: 808, height: 250)
        indicatorsImageView.frame = CGRect(x: 542, y: 44, width: 222, height: 400)
        settingsImageView.frame = CGRect(x: -49, y: 43, width: 225, height: 402)
        img_compressor.frame = CGRect(x: 634, y: 358, width: 65, height: 57)
        
        modifyCenterY()
        modifyCenterX()
    }
    
    
    func modifyCenterX(){
        lbl_set_point.frame.origin.x = lbl_set_point.frame.origin.x + offsetX
        lbl_indicators.frame.origin.x = lbl_indicators.frame.origin.x + offsetX
        lbl_settings.frame.origin.x = lbl_settings.frame.origin.x + offsetX
        lbl_mode.frame.origin.x = lbl_mode.frame.origin.x + offsetX
        lbl_chef.frame.origin.x = lbl_chef.frame.origin.x + offsetX
        lbl_digital_temperature_indicator.frame.origin.x = lbl_digital_temperature_indicator.frame.origin.x + offsetX
        img_title_home.frame.origin.x = img_title_home.frame.origin.x + offsetX
        lbl_log.frame.origin.x = lbl_log.frame.origin.x + offsetX
        imageView159.frame.origin.x = imageView159.frame.origin.x + offsetX
        imageView84.frame.origin.x = imageView84.frame.origin.x + offsetX
        imageView83.frame.origin.x = imageView83.frame.origin.x + offsetX
        lbl_Temperature_SetPoint.frame.origin.x = lbl_Temperature_SetPoint.frame.origin.x + offsetX
        lbl_temperature.frame.origin.x = lbl_temperature.frame.origin.x + offsetX
        btn_set_point_down.frame.origin.x = btn_set_point_down.frame.origin.x + offsetX
        btn_set_point_up.frame.origin.x = btn_set_point_up.frame.origin.x + offsetX
        btn_send.frame.origin.x = btn_send.frame.origin.x + offsetX
        img_door.frame.origin.x = img_door.frame.origin.x + offsetX
        img_resistence.frame.origin.x = img_resistence.frame.origin.x + offsetX
        img_Light.frame.origin.x = img_Light.frame.origin.x + offsetX
        lbl_Temperature.frame.origin.x = lbl_Temperature.frame.origin.x + offsetX
        setPointImageView.frame.origin.x = setPointImageView.frame.origin.x + offsetX
        graphFrameImageView.frame.origin.x = graphFrameImageView.frame.origin.x + offsetX
        indicatorsImageView.frame.origin.x = indicatorsImageView.frame.origin.x + offsetX
        settingsImageView.frame.origin.x = settingsImageView.frame.origin.x + offsetX
        img_compressor.frame.origin.x = img_compressor.frame.origin.x + offsetX
    
        lbl_Temperature_SetPoint.center.x = setPointImageView.frame.origin.x + offsetX
        
    }
    
    func modifyCenterY(){
        lbl_set_point.frame.origin.y = lbl_set_point.frame.origin.y + offsetY
        lbl_indicators.frame.origin.y = lbl_indicators.frame.origin.y + offsetY
        lbl_settings.frame.origin.y = lbl_settings.frame.origin.y + offsetY
        lbl_mode.frame.origin.y = lbl_mode.frame.origin.y + offsetY
        lbl_chef.frame.origin.y = lbl_chef.frame.origin.y + offsetY
        lbl_digital_temperature_indicator.frame.origin.y = lbl_digital_temperature_indicator.frame.origin.y + offsetY
        img_title_home.frame.origin.y = img_title_home.frame.origin.y + offsetY
        lbl_log.frame.origin.y = lbl_log.frame.origin.y + offsetY
        imageView159.frame.origin.y = imageView159.frame.origin.y + offsetY
        imageView84.frame.origin.y = imageView84.frame.origin.y + offsetY
        imageView83.frame.origin.y = imageView83.frame.origin.y + offsetY
        lbl_temperature.frame.origin.y = lbl_temperature.frame.origin.y + offsetY
        btn_set_point_down.frame.origin.y = btn_set_point_down.frame.origin.y + offsetY
        btn_set_point_up.frame.origin.y = btn_set_point_up.frame.origin.y + offsetY
        lbl_Temperature_SetPoint.frame.origin.y = lbl_Temperature_SetPoint.frame.origin.y + offsetY
        btn_send.frame.origin.y = btn_send.frame.origin.y + offsetY
        img_door.frame.origin.y = img_door.frame.origin.y + offsetY
        img_resistence.frame.origin.y = img_resistence.frame.origin.y + offsetY
        img_Light.frame.origin.y = img_Light.frame.origin.y + offsetY
        lbl_Temperature.frame.origin.y = lbl_Temperature.frame.origin.y + offsetY
        setPointImageView.frame.origin.y = setPointImageView.frame.origin.y + offsetY
        graphFrameImageView.frame.origin.y = graphFrameImageView.frame.origin.y + offsetY
        indicatorsImageView.frame.origin.y = indicatorsImageView.frame.origin.y + offsetY
        settingsImageView.frame.origin.y = settingsImageView.frame.origin.y + offsetY
        img_compressor.frame.origin.y = img_compressor.frame.origin.y + offsetY
        lbl_Temperature_SetPoint.center.y = setPointImageView.frame.origin.y + offsetY
    }
    
    
    var originalFrames: [UIView: CGRect] = [:]

    func saveOriginalFrames() {
        originalFrames[lbl_set_point] = lbl_set_point.frame
        originalFrames[lbl_indicators] = lbl_indicators.frame
        originalFrames[lbl_settings] = lbl_settings.frame
        originalFrames[lbl_mode] = lbl_mode.frame
        originalFrames[lbl_chef] = lbl_chef.frame
        originalFrames[lbl_digital_temperature_indicator] = lbl_digital_temperature_indicator.frame
        originalFrames[img_title_home] = img_title_home.frame
        originalFrames[lbl_log] = lbl_log.frame
        originalFrames[imageView159] = imageView159.frame
        originalFrames[imageView84] = imageView84.frame
        originalFrames[imageView83] = imageView83.frame
        originalFrames[lbl_temperature] = lbl_temperature.frame
        originalFrames[btn_set_point_down] = btn_set_point_down.frame
        originalFrames[btn_send] = btn_send.frame
        originalFrames[img_door] = img_door.frame
        originalFrames[img_resistence] = img_resistence.frame
        originalFrames[img_Light] = img_Light.frame
        originalFrames[lbl_Temperature] = lbl_Temperature.frame
        originalFrames[setPointImageView] = setPointImageView.frame
        originalFrames[graphFrameImageView] = graphFrameImageView.frame
        originalFrames[indicatorsImageView] = indicatorsImageView.frame
        originalFrames[settingsImageView] = settingsImageView.frame
        originalFrames[img_compressor] = img_compressor.frame
    }


    // Función para restaurar las posiciones originales
    func resetFrames() {
        for (view, frame) in originalFrames {
            view.frame = frame
        }
    }
    
}
