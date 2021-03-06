(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80000001)))
;; x should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4AD83D17)))
;; y should be Float32(0x4AD83D17 [Rational(14171415, 2), 7085707.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111111 #b11011010101100110000110)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
