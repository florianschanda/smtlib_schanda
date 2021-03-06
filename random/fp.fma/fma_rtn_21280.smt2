(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10000000001100010101101)))
;; x should be Float32(0x4AC018AD [Rational(12589229, 2), 6294614.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8065CC93)))
;; y should be Float32(0x8065CC93 [Rational(-6671507, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111111 #b01100111010010111001011)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #xFFFFFFFF)))
(check-sat)
(exit)
