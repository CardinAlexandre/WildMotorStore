package com.wildcodeschool.wildmotorstore.entity;

import javax.persistence.*;

@Entity
public class Purchase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idPurchase;

    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "idCart")
    private Cart cart;

    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "idProduct")
    private Product product;

    private int quantity;

    public Purchase() {
    }

    public Long getIdPurchase() {
        return idPurchase;
    }

    public void setIdPurchase(Long idPurchase) {
        this.idPurchase = idPurchase;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
