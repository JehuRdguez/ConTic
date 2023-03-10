PGDMP         9                {            planeacionmant    15.2    15.2 2    J           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            K           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            L           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            M           1262    16446    planeacionmant    DATABASE     ?   CREATE DATABASE planeacionmant WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE planeacionmant;
                postgres    false            ?            1259    16506    bitacora    TABLE     A  CREATE TABLE public.bitacora (
    ecodbitacora numeric NOT NULL,
    fk_eunidad numeric,
    fk_eunidadnegocio numeric,
    fk_ecaptura numeric,
    tdescripcion character varying(600),
    fk_etiporeporte numeric,
    fhfechainicial date,
    fhfechafinal date,
    fk_epiezasutilizadas numeric,
    hhorainicial time without time zone,
    hhorafinal time without time zone,
    tdisponibilidad boolean,
    fk_etecnico numeric,
    fk_esupervisor numeric,
    tturno numeric,
    tefectosfalla character varying(300),
    fk_esistema numeric,
    fk_esubsistema numeric
);
    DROP TABLE public.bitacora;
       public         heap    postgres    false            ?            1259    16578    mantenimiento    TABLE     o   CREATE TABLE public.mantenimiento (
    ecodtipomantenimiento numeric NOT NULL,
    ecantidad numeric(15,0)
);
 !   DROP TABLE public.mantenimiento;
       public         heap    postgres    false            ?            1259    16585    mantpreventivo    TABLE       CREATE TABLE public.mantpreventivo (
    ecodmantprev numeric NOT NULL,
    bestado boolean,
    fk_unidadnegicios numeric,
    fk_eunidad numeric,
    fhultimomantenimiento date,
    ehorometro numeric,
    eodometro numeric,
    fk_etipomantenimiento numeric
);
 "   DROP TABLE public.mantpreventivo;
       public         heap    postgres    false            ?            1259    16474    piezas    TABLE     [   CREATE TABLE public.piezas (
    ecodpiezas numeric NOT NULL,
    ecodigo numeric(30,0)
);
    DROP TABLE public.piezas;
       public         heap    postgres    false            ?            1259    16548    sistema    TABLE     f   CREATE TABLE public.sistema (
    ecodsistema numeric NOT NULL,
    tnombre character varying(100)
);
    DROP TABLE public.sistema;
       public         heap    postgres    false            ?            1259    16561 
   subsistema    TABLE     l   CREATE TABLE public.subsistema (
    ecodsubsistema numeric NOT NULL,
    tnombre character varying(100)
);
    DROP TABLE public.subsistema;
       public         heap    postgres    false            ?            1259    16465    tiporeporte    TABLE     n   CREATE TABLE public.tiporeporte (
    ecodtiporeporte numeric NOT NULL,
    tnombre character varying(100)
);
    DROP TABLE public.tiporeporte;
       public         heap    postgres    false            ?            1259    16481    tipousuario    TABLE     ?   CREATE TABLE public.tipousuario (
    ecodtipousuario numeric NOT NULL,
    tdescripcionusuario character varying(100),
    bestado boolean
);
    DROP TABLE public.tipousuario;
       public         heap    postgres    false            ?            1259    16447    unidad    TABLE     d   CREATE TABLE public.unidad (
    ecodunidad numeric NOT NULL,
    tnombre character varying(100)
);
    DROP TABLE public.unidad;
       public         heap    postgres    false            ?            1259    16460    unidaddenegocios    TABLE     v   CREATE TABLE public.unidaddenegocios (
    ecodunidadnegocios numeric NOT NULL,
    tnombre character varying(100)
);
 $   DROP TABLE public.unidaddenegocios;
       public         heap    postgres    false            ?            1259    16488    usuario    TABLE     ?   CREATE TABLE public.usuario (
    ecodusuario numeric NOT NULL,
    bstatus boolean,
    tnombre character varying(100),
    tapellidopaterno character varying(100),
    tapellidomaterno character varying(100),
    fk_ecodtipousuario numeric
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            C          0    16506    bitacora 
   TABLE DATA           +  COPY public.bitacora (ecodbitacora, fk_eunidad, fk_eunidadnegocio, fk_ecaptura, tdescripcion, fk_etiporeporte, fhfechainicial, fhfechafinal, fk_epiezasutilizadas, hhorainicial, hhorafinal, tdisponibilidad, fk_etecnico, fk_esupervisor, tturno, tefectosfalla, fk_esistema, fk_esubsistema) FROM stdin;
    public          postgres    false    220   ?>       F          0    16578    mantenimiento 
   TABLE DATA           I   COPY public.mantenimiento (ecodtipomantenimiento, ecantidad) FROM stdin;
    public          postgres    false    223   a?       G          0    16585    mantpreventivo 
   TABLE DATA           ?   COPY public.mantpreventivo (ecodmantprev, bestado, fk_unidadnegicios, fk_eunidad, fhultimomantenimiento, ehorometro, eodometro, fk_etipomantenimiento) FROM stdin;
    public          postgres    false    224   ??       @          0    16474    piezas 
   TABLE DATA           5   COPY public.piezas (ecodpiezas, ecodigo) FROM stdin;
    public          postgres    false    217   ??       D          0    16548    sistema 
   TABLE DATA           7   COPY public.sistema (ecodsistema, tnombre) FROM stdin;
    public          postgres    false    221   ??       E          0    16561 
   subsistema 
   TABLE DATA           =   COPY public.subsistema (ecodsubsistema, tnombre) FROM stdin;
    public          postgres    false    222   @       ?          0    16465    tiporeporte 
   TABLE DATA           ?   COPY public.tiporeporte (ecodtiporeporte, tnombre) FROM stdin;
    public          postgres    false    216   3@       A          0    16481    tipousuario 
   TABLE DATA           T   COPY public.tipousuario (ecodtipousuario, tdescripcionusuario, bestado) FROM stdin;
    public          postgres    false    218   ]@       =          0    16447    unidad 
   TABLE DATA           5   COPY public.unidad (ecodunidad, tnombre) FROM stdin;
    public          postgres    false    214   ?@       >          0    16460    unidaddenegocios 
   TABLE DATA           G   COPY public.unidaddenegocios (ecodunidadnegocios, tnombre) FROM stdin;
    public          postgres    false    215   ?@       B          0    16488    usuario 
   TABLE DATA           x   COPY public.usuario (ecodusuario, bstatus, tnombre, tapellidopaterno, tapellidomaterno, fk_ecodtipousuario) FROM stdin;
    public          postgres    false    219   ?@       ?           2606    16512    bitacora bitacora_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT bitacora_pkey PRIMARY KEY (ecodbitacora);
 @   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT bitacora_pkey;
       public            postgres    false    220            ?           2606    16453    unidad fk_eunidad_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.unidad
    ADD CONSTRAINT fk_eunidad_pkey PRIMARY KEY (ecodunidad);
 @   ALTER TABLE ONLY public.unidad DROP CONSTRAINT fk_eunidad_pkey;
       public            postgres    false    214            ?           2606    16584     mantenimiento mantenimiento_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mantenimiento
    ADD CONSTRAINT mantenimiento_pkey PRIMARY KEY (ecodtipomantenimiento);
 J   ALTER TABLE ONLY public.mantenimiento DROP CONSTRAINT mantenimiento_pkey;
       public            postgres    false    223            ?           2606    16591 "   mantpreventivo mantpreventivo_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.mantpreventivo
    ADD CONSTRAINT mantpreventivo_pkey PRIMARY KEY (ecodmantprev);
 L   ALTER TABLE ONLY public.mantpreventivo DROP CONSTRAINT mantpreventivo_pkey;
       public            postgres    false    224            ?           2606    16480    piezas piezas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.piezas
    ADD CONSTRAINT piezas_pkey PRIMARY KEY (ecodpiezas);
 <   ALTER TABLE ONLY public.piezas DROP CONSTRAINT piezas_pkey;
       public            postgres    false    217            ?           2606    16554    sistema sistema_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.sistema
    ADD CONSTRAINT sistema_pkey PRIMARY KEY (ecodsistema);
 >   ALTER TABLE ONLY public.sistema DROP CONSTRAINT sistema_pkey;
       public            postgres    false    221            ?           2606    16567    subsistema subsistema_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.subsistema
    ADD CONSTRAINT subsistema_pkey PRIMARY KEY (ecodsubsistema);
 D   ALTER TABLE ONLY public.subsistema DROP CONSTRAINT subsistema_pkey;
       public            postgres    false    222            ?           2606    16471    tiporeporte tiporeporte_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.tiporeporte
    ADD CONSTRAINT tiporeporte_pkey PRIMARY KEY (ecodtiporeporte);
 F   ALTER TABLE ONLY public.tiporeporte DROP CONSTRAINT tiporeporte_pkey;
       public            postgres    false    216            ?           2606    16487    tipousuario tipousuario_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.tipousuario
    ADD CONSTRAINT tipousuario_pkey PRIMARY KEY (ecodtipousuario);
 F   ALTER TABLE ONLY public.tipousuario DROP CONSTRAINT tipousuario_pkey;
       public            postgres    false    218            ?           2606    16473 &   unidaddenegocios unidaddenegocios_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.unidaddenegocios
    ADD CONSTRAINT unidaddenegocios_pkey PRIMARY KEY (ecodunidadnegocios);
 P   ALTER TABLE ONLY public.unidaddenegocios DROP CONSTRAINT unidaddenegocios_pkey;
       public            postgres    false    215            ?           2606    16494    usuario usuario_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (ecodusuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    219            ?           2606    16523    bitacora fk_ecaptura    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT fk_ecaptura FOREIGN KEY (fk_ecaptura) REFERENCES public.usuario(ecodusuario) NOT VALID;
 >   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT fk_ecaptura;
       public          postgres    false    3223    219    220            ?           2606    16501    usuario fk_ecodtipousuario    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_ecodtipousuario FOREIGN KEY (fk_ecodtipousuario) REFERENCES public.tipousuario(ecodtipousuario) NOT VALID;
 D   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_ecodtipousuario;
       public          postgres    false    218    3221    219            ?           2606    16533    bitacora fk_epiezasutilizadas    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT fk_epiezasutilizadas FOREIGN KEY (fk_epiezasutilizadas) REFERENCES public.piezas(ecodpiezas) NOT VALID;
 G   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT fk_epiezasutilizadas;
       public          postgres    false    217    220    3219            ?           2606    16568    bitacora fk_esistema    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT fk_esistema FOREIGN KEY (fk_esistema) REFERENCES public.sistema(ecodsistema) NOT VALID;
 >   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT fk_esistema;
       public          postgres    false    220    221    3227            ?           2606    16573    bitacora fk_esubsistema    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT fk_esubsistema FOREIGN KEY (fk_esubsistema) REFERENCES public.subsistema(ecodsubsistema) NOT VALID;
 A   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT fk_esubsistema;
       public          postgres    false    222    3229    220            ?           2606    16543    bitacora fk_esupervisor    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT fk_esupervisor FOREIGN KEY (fk_esupervisor) REFERENCES public.usuario(ecodusuario) NOT VALID;
 A   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT fk_esupervisor;
       public          postgres    false    219    220    3223            ?           2606    16538    bitacora fk_etecnico    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT fk_etecnico FOREIGN KEY (fk_etecnico) REFERENCES public.usuario(ecodusuario) NOT VALID;
 >   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT fk_etecnico;
       public          postgres    false    219    220    3223            ?           2606    16612 $   mantpreventivo fk_etipomantenimiento    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mantpreventivo
    ADD CONSTRAINT fk_etipomantenimiento FOREIGN KEY (fk_etipomantenimiento) REFERENCES public.mantpreventivo(ecodmantprev) NOT VALID;
 N   ALTER TABLE ONLY public.mantpreventivo DROP CONSTRAINT fk_etipomantenimiento;
       public          postgres    false    224    3233    224            ?           2606    16528    bitacora fk_etiporeporte    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT fk_etiporeporte FOREIGN KEY (fk_etiporeporte) REFERENCES public.tiporeporte(ecodtiporeporte) NOT VALID;
 B   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT fk_etiporeporte;
       public          postgres    false    220    3217    216            ?           2606    16513    bitacora fk_eunidad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT fk_eunidad FOREIGN KEY (fk_eunidad) REFERENCES public.unidad(ecodunidad) NOT VALID;
 =   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT fk_eunidad;
       public          postgres    false    214    3213    220            ?           2606    16607    mantpreventivo fk_eunidad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mantpreventivo
    ADD CONSTRAINT fk_eunidad FOREIGN KEY (fk_eunidad) REFERENCES public.unidad(ecodunidad) NOT VALID;
 C   ALTER TABLE ONLY public.mantpreventivo DROP CONSTRAINT fk_eunidad;
       public          postgres    false    3213    214    224            ?           2606    16518    bitacora fk_eunidadnegocios    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT fk_eunidadnegocios FOREIGN KEY (fk_eunidadnegocio) REFERENCES public.unidaddenegocios(ecodunidadnegocios) NOT VALID;
 E   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT fk_eunidadnegocios;
       public          postgres    false    215    3215    220            ?           2606    16602 !   mantpreventivo fk_eunidadnegocios    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mantpreventivo
    ADD CONSTRAINT fk_eunidadnegocios FOREIGN KEY (fk_unidadnegicios) REFERENCES public.unidaddenegocios(ecodunidadnegocios) NOT VALID;
 K   ALTER TABLE ONLY public.mantpreventivo DROP CONSTRAINT fk_eunidadnegocios;
       public          postgres    false    215    224    3215            C   W   x?3?4??T???܂?|????̼?Ң?<???????????	2????? ?8͡?N#Nc?I?Uss??&??i????? <      F      x?3?450?????? 
)?      G   )   x?3?,?4B##c]#]#cNSC#NcNC?=... gm      @      x?3?4?0?0?????? n?      D      x?3?,NM/-?LIL?????? 0 ?      E      x?3?L??+)-???????? *?_      ?      x?3?L?/*JM.?,??????? 7?-      A      x?3?LL????,.)JL?/?,?????? \??      =      x?3?41w?4r?????? #M      >      x?3??vrw?????? ??      B   V   x???
?0痏??? DW?H3j?.~?Yn?;ƃMss?՛v$ykq?j?bR?c?[?([?i
?zWbrAr{bf:"?Z??     