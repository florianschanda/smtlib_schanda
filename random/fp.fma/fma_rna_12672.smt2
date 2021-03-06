(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xDC195E60)))
;; x should be Float32(0xDC195E60 [Rational(-172677751386406912), -172677751386406912.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4A3252FA)))
;; y should be Float32(0x4A3252FA [Rational(5843325, 2), 2921662.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b00100001111001011101001)))
;; z should be Float32(0x8010F2E9 [Rational(-1110761, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result ((_ to_fp 8 24) #xE6D5AAAA))))
(check-sat)
(exit)
