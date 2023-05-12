import UIKit
class Vista1: UIView {
    lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.semanticContentAttribute = .forceLeftToRight
        imageView.frame = CGRect(x: -105, y: -7, width: 1061, height: 806)
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
        imageView.frame = CGRect(x: -49, y: 43, width: 225, height: 402)
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
        imageView.frame = CGRect(x: 542, y: 44, width: 222, height: 400)
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
        imageView.frame = CGRect(x: -44, y: 475, width: 808, height: 250)
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
        imageView.frame = CGRect(x: 225, y: 200, width: 244, height: 193)
        imageView.image = UIImage(named: "SetPoint-0.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.tag = 11
        return imageView
    }()
    
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.isOpaque = false
        label.clipsToBounds = true
        label.contentMode = .left
        label.frame = CGRect(x: 176, y: 90, width: 364, height: 99)
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

    lazy var focusOffImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.frame = CGRect(x: 627, y: 100, width: 65, height: 57)
        imageView.image = UIImage(named: "icono-focoOff.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.tag = 38
        return imageView
    }()
    
    lazy var defrostOffImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.frame = CGRect(x: 627, y: 185, width: 65, height: 57)
        imageView.image = UIImage(named: "icono-defrostOff.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.tag = 39
        return imageView
    }()
    
    lazy var doorCloseImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.frame = CGRect(x: 627, y: 273, width: 65, height: 57)
        imageView.image = UIImage(named: "icono-doorClose.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.tag = 40
        return imageView
    }()
    
    lazy var compressorOffImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.frame = CGRect(x: 634, y: 358, width: 65, height: 57)
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
        imageView.image = UIImage(named: "Imagenes/titulo-centro.png")
        return imageView
    }()

    // Etiqueta adicional
    lazy var additionalLabel: UILabel = {
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

    private let button219: UIButton = {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 264, y: 409, width: 164, height: 42)
        button.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        button.isHidden = true
        button.isOpaque = false
        button.contentMode = .scaleToFill
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(named: "Imagenes/boton-setpoint-activo.png"), for: .normal)
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
    lazy var button: UIButton = {
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
        button.setBackgroundImage(UIImage(named: "Imagenes/setpoint-flecha-arriba-normal.png"), for: .normal)
        button.setTitleShadowColor(UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1), for: .normal)
        return button
    }()


    private let button61: UIButton = {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 470, y: 333, width: 58, height: 56)
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
        button.setBackgroundImage(UIImage(named: "Imagenes/setpoint-flecha-abajo-normal.png"), for: .normal)
        button.setTitleShadowColor(UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1), for: .normal)
        return button
    }()


    // Componente: Label
    private let label82: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 249, y: 49, width: 200, height: 21)
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
        imageView.frame = CGRect(x: -46, y: 44, width: 173, height: 31)
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "Imagenes/titulo-izq.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    // Componente: ImageView
    private let imageView84: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 586, y: 44, width: 178, height: 31)
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "Imagenes/titulo-der.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private let imageView159: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 0.0, y: 268, width: 113, height: 91)
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.isUserInteractionEnabled = false
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    // Componente: Label
    private let label160: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: -23, y: 139, width: 86, height: 21)
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

    // Componente: Label
    private let label161: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 41, y: 140, width: 86, height: 21)
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
        return label
    }()

    // Componente: ImageView
    private let imageView162: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 177, y: 459, width: 364, height: 34)
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "Imagenes/TITULO-HOME.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private let label163: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 198, y: 466, width: 322, height: 21)
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
    private let label164: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: -54, y: 374, width: 230, height: 21)
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
    private let label165: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 12, y: 222, width: 86, height: 21)
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

    private let label210: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: -73, y: 49, width: 186, height: 21)
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
    private let label211: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 586, y: 49, width: 200, height: 21)
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
    private let label214: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 282, y: 374, width: 127, height: 21)
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
    
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView(){
        // Agregar como subvistas

        // backgroundImageView
        addSubview(backgroundImageView)

        // settingsImageView
        addSubview(settingsImageView)

        // indicatorsImageView
        addSubview(indicatorsImageView)

        // graphFrameImageView
        addSubview(graphFrameImageView)

        // setPointImageView
        addSubview(setPointImageView)

        // textLabel
        addSubview(textLabel)

        // focusOffImageView
        addSubview(focusOffImageView)

        // defrostOffImageView
        addSubview(defrostOffImageView)

        // doorCloseImageView
        addSubview(doorCloseImageView)

        // compressorOffImageView
        addSubview(compressorOffImageView)

        // ligthLabel
        addSubview(ligthLabel)

        // defrostLabel
        addSubview(defrostLabel)

        // doorOpenLabel
        addSubview(doorOpenLabel)

        // compressorLabel
        addSubview(compressorLabel)

        // tituloCentroImageView
        addSubview(tituloCentroImageView)

        // additionalLabel
        addSubview(additionalLabel)

        // button219
        addSubview(button219)

        // button
        addSubview(button)

        // button61
        addSubview(button61)

        // label82
        addSubview(label82)

        // imageView83
        addSubview(imageView83)

        // imageView84
        addSubview(imageView84)

        // imageView159
        addSubview(imageView159)

        // label160
        addSubview(label160)

        // label161
        addSubview(label161)

        // imageView162
        addSubview(imageView162)

        // label163
        addSubview(label163)

        // label164
        addSubview(label164)

        // label165
        addSubview(label165)

        // label210
        addSubview(label210)

        // label211
        addSubview(label211)

        // label214
        addSubview(label214)
    }
    
}
