//
//  VIPERPresenter.swift
//  Super easy dev
//
//  Created by Vitalii Homoniuk on 23.11.2022
//
import UIKit


protocol VIPERPresenterProtocol: AnyObject {
    func didLoad(image: UIImage)
    func didLoad(text: String)
    func didTapButton()
    func didTapNextButton()
}


class VIPERPresenter {
    weak var view: VIPERViewProtocol?
    var router: VIPERRouterProtocol
    var interactor: VIPERInteractorProtocol

    init(interactor: VIPERInteractorProtocol, router: VIPERRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}


extension VIPERPresenter: VIPERPresenterProtocol {
    
    func didLoad(image: UIImage) {
        view?.showImage(image: image)
    }
    
    func didLoad(text: String) {
        view?.showText(text: text)
    }
    
    func didTapButton() {
        interactor.loadData()
    }
    
    func didTapNextButton() {
        router.openVC()
    }
}
