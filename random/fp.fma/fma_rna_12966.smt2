(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x9C0BF9DD)))
;; x should be Float32(0x9C0BF9DD [Rational(-9173469, 19807040628566084398385987584), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8052279F)))
;; y should be Float32(0x8052279F [Rational(-5384095, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b01111111 #b11001111011011100111101)))
;; z should be Float32(0x3FE7B73D [Rational(15185725, 8388608), 1.810279])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b0 #b01111111 #b11001111011011100111101))))
(check-sat)
(exit)
