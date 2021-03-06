(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AF5E499)))
;; x should be Float32(0x4AF5E499 [Rational(16114841, 2), 8057420.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00100011101100110010101)))
;; y should be Float32(0x0011D995 [Rational(1169813, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (_ -zero 8 24)))
;; z should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b0 #b00010101 #b00010010010100101100000)))
(check-sat)
(exit)
