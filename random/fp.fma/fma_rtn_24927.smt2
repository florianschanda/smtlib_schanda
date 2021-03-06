(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y (_ +zero 8 24)))
;; y should be Float32(+zero)

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b10000011100111100010000)))
;; z should be Float32(0x8041CF10 [Rational(-269553, 44601490397061246283071436545296723011960832), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #x8041CF10)))
(check-sat)
(exit)
