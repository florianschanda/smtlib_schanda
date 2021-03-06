(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80800000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xE8171041)))
;; y should be Float32(0xE8171041 [Rational(-2853508682248432981639168), -2853508682248432981639168.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b01011111 #b01011000000011001011111)))
;; z should be Float32(0xAFAC065F [Rational(-11273823, 36028797018963968), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b1 #b01011111 #b01011000000000110100110))))
(check-sat)
(exit)
