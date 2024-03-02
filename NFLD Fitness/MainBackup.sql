PGDMP  2                    |            nfld-fitness    16.1    16.1 <    k           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            l           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            m           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            n           1262    16876    nfld-fitness    DATABASE     p   CREATE DATABASE "nfld-fitness" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "nfld-fitness";
                postgres    false            �            1259    17322    address    TABLE     �   CREATE TABLE public.address (
    address_id integer NOT NULL,
    street_name character varying(100),
    street_number character varying(20),
    city character varying(50),
    province character varying(50),
    postal_code character varying(20)
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    17362 	   equipment    TABLE     �   CREATE TABLE public.equipment (
    equipment_id integer NOT NULL,
    equipment_name character varying(100),
    purchase_date date,
    availability_status character varying(20)
);
    DROP TABLE public.equipment;
       public         heap    postgres    false            �            1259    17417    fitness_class    TABLE     �   CREATE TABLE public.fitness_class (
    class_id integer NOT NULL,
    staff_id integer,
    member_id integer,
    price_id integer,
    maximum_capacity integer
);
 !   DROP TABLE public.fitness_class;
       public         heap    postgres    false            �            1259    17387    gym_location    TABLE     p   CREATE TABLE public.gym_location (
    gym_id integer NOT NULL,
    address_id integer,
    staff_id integer
);
     DROP TABLE public.gym_location;
       public         heap    postgres    false            �            1259    17342 
   membership    TABLE     �   CREATE TABLE public.membership (
    member_id integer NOT NULL,
    name_id integer,
    address_id integer,
    price_id integer,
    membership_type character varying(50),
    membership_length integer,
    date_joined date
);
    DROP TABLE public.membership;
       public         heap    postgres    false            �            1259    17317    person_information    TABLE     �   CREATE TABLE public.person_information (
    name_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    phone_number character varying(20)
);
 &   DROP TABLE public.person_information;
       public         heap    postgres    false            �            1259    17327    price    TABLE     ]   CREATE TABLE public.price (
    price_id integer NOT NULL,
    price_amount numeric(10,2)
);
    DROP TABLE public.price;
       public         heap    postgres    false            �            1259    17402    receipt    TABLE     �   CREATE TABLE public.receipt (
    receipt_id integer NOT NULL,
    member_id integer,
    payment_method character varying(50),
    tax_id integer,
    subtotal numeric(10,2),
    total_amount numeric(10,2)
);
    DROP TABLE public.receipt;
       public         heap    postgres    false            �            1259    17447    receipt_item    TABLE     �   CREATE TABLE public.receipt_item (
    receipt_item_id integer NOT NULL,
    receipt_id integer,
    supplement_id integer,
    quantity integer,
    price_id integer
);
     DROP TABLE public.receipt_item;
       public         heap    postgres    false            �            1259    17337    salary    TABLE     `   CREATE TABLE public.salary (
    salary_id integer NOT NULL,
    salary_amount numeric(10,2)
);
    DROP TABLE public.salary;
       public         heap    postgres    false            �            1259    17367    staff    TABLE     �   CREATE TABLE public.staff (
    staff_id integer NOT NULL,
    name_id integer,
    address_id integer,
    salary_id integer
);
    DROP TABLE public.staff;
       public         heap    postgres    false            �            1259    17437    supplements    TABLE     �   CREATE TABLE public.supplements (
    supplement_id integer NOT NULL,
    price_id integer,
    supplement_name character varying(100),
    stock_amount integer,
    reorder_number integer
);
    DROP TABLE public.supplements;
       public         heap    postgres    false            �            1259    17332    tax    TABLE     T   CREATE TABLE public.tax (
    tax_id integer NOT NULL,
    tax_rate numeric(5,2)
);
    DROP TABLE public.tax;
       public         heap    postgres    false            ]          0    17322    address 
   TABLE DATA           f   COPY public.address (address_id, street_name, street_number, city, province, postal_code) FROM stdin;
    public          postgres    false    216   �J       b          0    17362 	   equipment 
   TABLE DATA           e   COPY public.equipment (equipment_id, equipment_name, purchase_date, availability_status) FROM stdin;
    public          postgres    false    221   �K       f          0    17417    fitness_class 
   TABLE DATA           b   COPY public.fitness_class (class_id, staff_id, member_id, price_id, maximum_capacity) FROM stdin;
    public          postgres    false    225   �K       d          0    17387    gym_location 
   TABLE DATA           D   COPY public.gym_location (gym_id, address_id, staff_id) FROM stdin;
    public          postgres    false    223   %L       a          0    17342 
   membership 
   TABLE DATA              COPY public.membership (member_id, name_id, address_id, price_id, membership_type, membership_length, date_joined) FROM stdin;
    public          postgres    false    220   QL       \          0    17317    person_information 
   TABLE DATA           a   COPY public.person_information (name_id, first_name, last_name, email, phone_number) FROM stdin;
    public          postgres    false    215   �L       ^          0    17327    price 
   TABLE DATA           7   COPY public.price (price_id, price_amount) FROM stdin;
    public          postgres    false    217   4M       e          0    17402    receipt 
   TABLE DATA           h   COPY public.receipt (receipt_id, member_id, payment_method, tax_id, subtotal, total_amount) FROM stdin;
    public          postgres    false    224   iM       h          0    17447    receipt_item 
   TABLE DATA           f   COPY public.receipt_item (receipt_item_id, receipt_id, supplement_id, quantity, price_id) FROM stdin;
    public          postgres    false    227   �M       `          0    17337    salary 
   TABLE DATA           :   COPY public.salary (salary_id, salary_amount) FROM stdin;
    public          postgres    false    219   �M       c          0    17367    staff 
   TABLE DATA           I   COPY public.staff (staff_id, name_id, address_id, salary_id) FROM stdin;
    public          postgres    false    222   /N       g          0    17437    supplements 
   TABLE DATA           m   COPY public.supplements (supplement_id, price_id, supplement_name, stock_amount, reorder_number) FROM stdin;
    public          postgres    false    226   ZN       _          0    17332    tax 
   TABLE DATA           /   COPY public.tax (tax_id, tax_rate) FROM stdin;
    public          postgres    false    218   �N       �           2606    17326    address address_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    216            �           2606    17366    equipment equipment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (equipment_id);
 B   ALTER TABLE ONLY public.equipment DROP CONSTRAINT equipment_pkey;
       public            postgres    false    221            �           2606    17421     fitness_class fitness_class_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.fitness_class
    ADD CONSTRAINT fitness_class_pkey PRIMARY KEY (class_id);
 J   ALTER TABLE ONLY public.fitness_class DROP CONSTRAINT fitness_class_pkey;
       public            postgres    false    225            �           2606    17391    gym_location gym_location_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.gym_location
    ADD CONSTRAINT gym_location_pkey PRIMARY KEY (gym_id);
 H   ALTER TABLE ONLY public.gym_location DROP CONSTRAINT gym_location_pkey;
       public            postgres    false    223            �           2606    17346    membership membership_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.membership
    ADD CONSTRAINT membership_pkey PRIMARY KEY (member_id);
 D   ALTER TABLE ONLY public.membership DROP CONSTRAINT membership_pkey;
       public            postgres    false    220            �           2606    17321 *   person_information person_information_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.person_information
    ADD CONSTRAINT person_information_pkey PRIMARY KEY (name_id);
 T   ALTER TABLE ONLY public.person_information DROP CONSTRAINT person_information_pkey;
       public            postgres    false    215            �           2606    17331    price price_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_pkey PRIMARY KEY (price_id);
 :   ALTER TABLE ONLY public.price DROP CONSTRAINT price_pkey;
       public            postgres    false    217            �           2606    17451    receipt_item receipt_item_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.receipt_item
    ADD CONSTRAINT receipt_item_pkey PRIMARY KEY (receipt_item_id);
 H   ALTER TABLE ONLY public.receipt_item DROP CONSTRAINT receipt_item_pkey;
       public            postgres    false    227            �           2606    17406    receipt receipt_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.receipt
    ADD CONSTRAINT receipt_pkey PRIMARY KEY (receipt_id);
 >   ALTER TABLE ONLY public.receipt DROP CONSTRAINT receipt_pkey;
       public            postgres    false    224            �           2606    17341    salary salary_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.salary
    ADD CONSTRAINT salary_pkey PRIMARY KEY (salary_id);
 <   ALTER TABLE ONLY public.salary DROP CONSTRAINT salary_pkey;
       public            postgres    false    219            �           2606    17371    staff staff_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_id);
 :   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
       public            postgres    false    222            �           2606    17441    supplements supplements_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.supplements
    ADD CONSTRAINT supplements_pkey PRIMARY KEY (supplement_id);
 F   ALTER TABLE ONLY public.supplements DROP CONSTRAINT supplements_pkey;
       public            postgres    false    226            �           2606    17336    tax tax_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tax
    ADD CONSTRAINT tax_pkey PRIMARY KEY (tax_id);
 6   ALTER TABLE ONLY public.tax DROP CONSTRAINT tax_pkey;
       public            postgres    false    218            �           2606    17427 *   fitness_class fitness_class_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fitness_class
    ADD CONSTRAINT fitness_class_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.membership(member_id);
 T   ALTER TABLE ONLY public.fitness_class DROP CONSTRAINT fitness_class_member_id_fkey;
       public          postgres    false    225    3501    220            �           2606    17432 )   fitness_class fitness_class_price_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fitness_class
    ADD CONSTRAINT fitness_class_price_id_fkey FOREIGN KEY (price_id) REFERENCES public.price(price_id);
 S   ALTER TABLE ONLY public.fitness_class DROP CONSTRAINT fitness_class_price_id_fkey;
       public          postgres    false    225    3495    217            �           2606    17422 )   fitness_class fitness_class_staff_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fitness_class
    ADD CONSTRAINT fitness_class_staff_id_fkey FOREIGN KEY (staff_id) REFERENCES public.staff(staff_id);
 S   ALTER TABLE ONLY public.fitness_class DROP CONSTRAINT fitness_class_staff_id_fkey;
       public          postgres    false    225    3505    222            �           2606    17392 )   gym_location gym_location_address_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gym_location
    ADD CONSTRAINT gym_location_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.address(address_id);
 S   ALTER TABLE ONLY public.gym_location DROP CONSTRAINT gym_location_address_id_fkey;
       public          postgres    false    216    223    3493            �           2606    17397 '   gym_location gym_location_staff_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gym_location
    ADD CONSTRAINT gym_location_staff_id_fkey FOREIGN KEY (staff_id) REFERENCES public.staff(staff_id);
 Q   ALTER TABLE ONLY public.gym_location DROP CONSTRAINT gym_location_staff_id_fkey;
       public          postgres    false    3505    222    223            �           2606    17352 %   membership membership_address_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.membership
    ADD CONSTRAINT membership_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.address(address_id);
 O   ALTER TABLE ONLY public.membership DROP CONSTRAINT membership_address_id_fkey;
       public          postgres    false    220    3493    216            �           2606    17347 "   membership membership_name_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.membership
    ADD CONSTRAINT membership_name_id_fkey FOREIGN KEY (name_id) REFERENCES public.person_information(name_id);
 L   ALTER TABLE ONLY public.membership DROP CONSTRAINT membership_name_id_fkey;
       public          postgres    false    215    220    3491            �           2606    17357 #   membership membership_price_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.membership
    ADD CONSTRAINT membership_price_id_fkey FOREIGN KEY (price_id) REFERENCES public.price(price_id);
 M   ALTER TABLE ONLY public.membership DROP CONSTRAINT membership_price_id_fkey;
       public          postgres    false    220    217    3495            �           2606    17462 '   receipt_item receipt_item_price_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.receipt_item
    ADD CONSTRAINT receipt_item_price_id_fkey FOREIGN KEY (price_id) REFERENCES public.price(price_id);
 Q   ALTER TABLE ONLY public.receipt_item DROP CONSTRAINT receipt_item_price_id_fkey;
       public          postgres    false    227    217    3495            �           2606    17452 )   receipt_item receipt_item_receipt_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.receipt_item
    ADD CONSTRAINT receipt_item_receipt_id_fkey FOREIGN KEY (receipt_id) REFERENCES public.receipt(receipt_id);
 S   ALTER TABLE ONLY public.receipt_item DROP CONSTRAINT receipt_item_receipt_id_fkey;
       public          postgres    false    3509    227    224            �           2606    17457 ,   receipt_item receipt_item_supplement_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.receipt_item
    ADD CONSTRAINT receipt_item_supplement_id_fkey FOREIGN KEY (supplement_id) REFERENCES public.supplements(supplement_id);
 V   ALTER TABLE ONLY public.receipt_item DROP CONSTRAINT receipt_item_supplement_id_fkey;
       public          postgres    false    3513    227    226            �           2606    17407    receipt receipt_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.receipt
    ADD CONSTRAINT receipt_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.membership(member_id);
 H   ALTER TABLE ONLY public.receipt DROP CONSTRAINT receipt_member_id_fkey;
       public          postgres    false    224    220    3501            �           2606    17412    receipt receipt_tax_id_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.receipt
    ADD CONSTRAINT receipt_tax_id_fkey FOREIGN KEY (tax_id) REFERENCES public.tax(tax_id);
 E   ALTER TABLE ONLY public.receipt DROP CONSTRAINT receipt_tax_id_fkey;
       public          postgres    false    224    3497    218            �           2606    17377    staff staff_address_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.address(address_id);
 E   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_address_id_fkey;
       public          postgres    false    222    3493    216            �           2606    17372    staff staff_name_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_name_id_fkey FOREIGN KEY (name_id) REFERENCES public.person_information(name_id);
 B   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_name_id_fkey;
       public          postgres    false    222    3491    215            �           2606    17382    staff staff_salary_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_salary_id_fkey FOREIGN KEY (salary_id) REFERENCES public.salary(salary_id);
 D   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_salary_id_fkey;
       public          postgres    false    219    3499    222            �           2606    17442 %   supplements supplements_price_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.supplements
    ADD CONSTRAINT supplements_price_id_fkey FOREIGN KEY (price_id) REFERENCES public.price(price_id);
 O   ALTER TABLE ONLY public.supplements DROP CONSTRAINT supplements_price_id_fkey;
       public          postgres    false    3495    226    217            ]   z   x�%�1�0���>�O�b;)0v`�*6���������i����X��1���;��,��K�ע��|@::=��^J6'0�-}ok;t��ѡ���_�D��47�v���0^w���k(�      b   `   x�3�)JML�����4202�50�54�t,K��IL�I�2�.I,���K,�Tp��N)3�54�52��K�+4�t)�MJJ��)��d�k�lR� /��      f   !   x�3�4C#.#N44�2�@#S�=... \,�      d      x�3�4�4�2�B.cN ����� !��      a   J   x�3�4C����dNC#N##c]c]C. �Rs3Ks9͠�F�F\Ɯ螟��id�2�50����� S�      \   y   x�U�1�0 g�/�HBl:!u��%��BDb$:������p:��
W�;�S�"�X�Ex��:j}G��0�*p/�+Aޑ�/�������5:��S���.�V(�s>��z����`D� �/�      ^   %   x�3�44г��2�42�3��2�44�37����� E�v      e   P   x�3�4�t.JM�,QpN,J�L�8MM�$���sbq�27	[�pss��&��s�5�q��qqq a.*      h   %   x�3�4���\F�F &��2�41�W� o��      `   !   x�3�45 =.#N3Ә��ʌ���� y�	      c      x�3�4A.#N0�2�C�=... 4#p      g   R   x�3�4�(�/I��S�/OI-�440�45�2�4��-�)�,�,I����4���rss:�&�d�r�p�p��qqq ��      _      x�3�4�3��2R�\� �)W� 4��     