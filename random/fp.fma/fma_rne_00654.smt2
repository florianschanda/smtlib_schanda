(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10001010101010000110110)))
;; x should be Float32(0x4A455436 [Rational(6466075, 2), 3233037.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80000001)))
;; y should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b01100001 #b01100001110110010111101)))
;; z should be Float32(0x30B0ECBD [Rational(11594941, 9007199254740992), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x30B0ECBD))))
(check-sat)
(exit)
