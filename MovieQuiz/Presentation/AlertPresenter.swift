import UIKit

final class AlertPresenter: AlertPresenterProtocol {
    // MARK: - Private Properties
    private weak var viewController: UIViewController?
    
    // MARK: - Inizializator
    init(delegate: UIViewController? = nil) {
        self.viewController = delegate
    }
    
    // MARK: - Public Methods
    func showAlert(alertModel: AlertModel) {
        
        let alertController = UIAlertController(title: alertModel.title, message: alertModel.message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: alertModel.buttonText, style: .default) { _ in
            alertModel.completion()
        }
        alertController.addAction(alertAction)
        viewController?.present(alertController, animated: true)
    }
}
