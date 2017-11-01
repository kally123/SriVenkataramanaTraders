package com.venkata.traders.domain;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.jpa.annotations.entity.JpaRelationType;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaRelation;
import javax.validation.constraints.Min;
import org.springframework.format.annotation.NumberFormat;
import io.springlets.format.EntityFormat;
import javax.persistence.OneToOne;
import java.util.Objects;
import javax.persistence.Entity;
import org.springframework.util.Assert;

/**
 * = Product
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
@Entity
@EntityFormat
public class Product {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Version
    private Integer version;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String productName;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String productDescription;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date applicableFrom;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String hsnSac;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private Boolean taxability;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "product")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<ProductTaxRates> productTaxRates = new HashSet<ProductTaxRates>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Min(1L)
    @NumberFormat
    private Integer productQuantity;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private CustomerProducts customerProducts;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    public static final String ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    public static final String ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";

    /**
     * This `equals` implementation is specific for JPA entities and uses
     * the entity identifier for it, following the article in
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     *
     * @param obj
     * @return Boolean
     */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof Product)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((Product) obj).getId());
    }

    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able
     * to identify the entity in collections after a new id is assigned to the entity, following the article in
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     *
     * @return Integer
     */
    public int hashCode() {
        return 31;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @return Long
     */
    public Long getId() {
        return this.id;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param id
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @return Integer
     */
    public Integer getVersion() {
        return this.version;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param version
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @return String
     */
    public String getProductName() {
        return this.productName;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param productName
     */
    public void setProductName(String productName) {
        this.productName = productName;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @return String
     */
    public String getProductDescription() {
        return this.productDescription;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param productDescription
     */
    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @return Date
     */
    public Date getApplicableFrom() {
        return this.applicableFrom;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param applicableFrom
     */
    public void setApplicableFrom(Date applicableFrom) {
        this.applicableFrom = applicableFrom;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @return String
     */
    public String getHsnSac() {
        return this.hsnSac;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param hsnSac
     */
    public void setHsnSac(String hsnSac) {
        this.hsnSac = hsnSac;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @return Boolean
     */
    public Boolean getTaxability() {
        return this.taxability;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param taxability
     */
    public void setTaxability(Boolean taxability) {
        this.taxability = taxability;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @return Set
     */
    public Set<ProductTaxRates> getProductTaxRates() {
        return this.productTaxRates;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param productTaxRates
     */
    public void setProductTaxRates(Set<ProductTaxRates> productTaxRates) {
        this.productTaxRates = productTaxRates;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @return Integer
     */
    public Integer getProductQuantity() {
        return this.productQuantity;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param productQuantity
     */
    public void setProductQuantity(Integer productQuantity) {
        this.productQuantity = productQuantity;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @return CustomerProducts
     */
    public CustomerProducts getCustomerProducts() {
        return this.customerProducts;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param customerProducts
     */
    public void setCustomerProducts(CustomerProducts customerProducts) {
        this.customerProducts = customerProducts;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @return String
     */
    public String toString() {
        return "Product {" + "id='" + id + '\'' + ", version='" + version + '\'' + ", productName='" + productName + '\'' + ", productDescription='" + productDescription + '\'' + ", applicableFrom='" + applicableFrom + '\'' + ", hsnSac='" + hsnSac + '\'' + ", taxability='" + taxability + '\'' + ", productQuantity='" + productQuantity + '\'' + ", ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE + '\'' + ", ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE + '\'' + "}" + super.toString();
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param productTaxRatesToAdd
     */
    public void addToProductTaxRates(Iterable<ProductTaxRates> productTaxRatesToAdd) {
        Assert.notNull(productTaxRatesToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (ProductTaxRates item : productTaxRatesToAdd) {
            this.productTaxRates.add(item);
            item.setProduct(this);
        }
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param productTaxRatesToRemove
     */
    public void removeFromProductTaxRates(Iterable<ProductTaxRates> productTaxRatesToRemove) {
        Assert.notNull(productTaxRatesToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (ProductTaxRates item : productTaxRatesToRemove) {
            this.productTaxRates.remove(item);
            item.setProduct(null);
        }
    }
}
