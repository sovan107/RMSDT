///*
// * Copyright 2002-2013 the original author or authors.
// *
// * Licensed under the Apache License, Version 2.0 (the "License");
// * you may not use this file except in compliance with the License.
// * You may obtain a copy of the License at
// *
// *      http://www.apache.org/licenses/LICENSE-2.0
// *
// * Unless required by applicable law or agreed to in writing, software
// * distributed under the License is distributed on an "AS IS" BASIS,
// * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// * See the License for the specific language governing permissions and
// * limitations under the License.
// */
//package com.rmsdt.web.model;
//
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.Collections;
//import java.util.HashSet;
//import java.util.List;
//import java.util.Set;
//
//import javax.persistence.CascadeType;
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.OneToMany;
//import javax.persistence.Table;
//import javax.persistence.Transient;
//import javax.validation.constraints.Digits;
//
//import org.hibernate.validator.constraints.NotEmpty;
//import org.springframework.beans.support.MutableSortDefinition;
//import org.springframework.beans.support.PropertyComparator;
//import org.springframework.web.multipart.MultipartFile;
//
///**
// * Simple JavaBean domain object representing an owner.
// *
// * @author Ken Krebs
// * @author Juergen Hoeller
// * @author Sam Brannen
// * @author Michael Isvy
// */
//@Entity
//@Table(name = "owners")
//public class Owner extends Person {
//
//    @Column(name = "address")
//    @NotEmpty
//    private String address;
//
//    @Column(name = "city")
//    @NotEmpty
//    private String city;
//
//    @Column(name = "telephone")
//    @NotEmpty
//    @Digits(fraction = 0, integer = 10)
//    private String telephone;
//
//    @OneToMany(cascade = CascadeType.ALL, mappedBy = "owner")
//    private Set<Pet> pets;
//
//    @OneToMany(cascade = CascadeType.ALL, mappedBy = "owner")
//    private List<OwnerImage> ownerImage;
//
//    @Transient
////    @Multipart(fileTypes = {"jpg", "png", "jpeg"})
//    private MultipartFile image;
//
//    public MultipartFile getImage() {
//        return image;
//    }
//
//    public void setImage(MultipartFile image) throws IOException {
//        this.image = image;
//    }
//
//    public List<OwnerImage> getOwnerImage() {
//
//        if (ownerImage == null || ownerImage.size() == 0) {
//            ownerImage = new ArrayList<OwnerImage>();
//            ownerImage.add(0, getDefaultImage());
//        }
//        PropertyComparator.sort(ownerImage, new MutableSortDefinition("id", true, false));
//        return ownerImage;
//    }
//
//    private OwnerImage getDefaultImage() {
//        OwnerImage oi = new OwnerImage();
//        oi.setOwner(this);
////        oi.setId(0);
//        oi.setImageName("default.png");
//        return oi;
//    }
//
//    public void setOwnerImage(List<OwnerImage> ownerImage) {
//        this.ownerImage = ownerImage;
//    }
//    
//    public void addOwnerImage(OwnerImage ownerImage){
//        getOwnerImage().add(ownerImage);
//    }
//
//    public String getAddress() {
//        return this.address;
//    }
//
//    public void setAddress(String address) {
//        this.address = address;
//    }
//
//    public String getCity() {
//        return this.city;
//    }
//
//    public void setCity(String city) {
//        this.city = city;
//    }
//
//    public String getTelephone() {
//        return this.telephone;
//    }
//
//    public void setTelephone(String telephone) {
//        this.telephone = telephone;
//    }
//
//    protected void setPetsInternal(Set<Pet> pets) {
//        this.pets = pets;
//    }
//
//    protected Set<Pet> getPetsInternal() {
//        if (this.pets == null) {
//            this.pets = new HashSet<Pet>();
//        }
//        return this.pets;
//    }
//
//    public List<Pet> getPets() {
//        List<Pet> sortedPets = new ArrayList<Pet>(getPetsInternal());
//        PropertyComparator.sort(sortedPets, new MutableSortDefinition("name", true, true));
//        System.out.println(Collections.unmodifiableList(sortedPets).size());
//        return Collections.unmodifiableList(sortedPets);
//    }
//
//    public void addPet(Pet pet) {
//        getPetsInternal().add(pet);
//        pet.setOwner(this);
//    }
//
//    /**
//     * Return the Pet with the given name, or null if none found for this Owner.
//     *
//     * @param name to test
//     * @return true if pet name is already in use
//     */
//    public Pet getPet(String name) {
//        return getPet(name, false);
//    }
//
//    /**
//     * Return the Pet with the given name, or null if none found for this Owner.
//     *
//     * @param name to test
//     * @return true if pet name is already in use
//     */
//    public Pet getPet(String name, boolean ignoreNew) {
//        name = name.toLowerCase();
//        for (Pet pet : getPetsInternal()) {
//            if (!ignoreNew || !pet.isNew()) {
//                String compName = pet.getName();
//                compName = compName.toLowerCase();
//                if (compName.equals(name)) {
//                    return pet;
//                }
//            }
//        }
//        return null;
//    }
//    
//}
