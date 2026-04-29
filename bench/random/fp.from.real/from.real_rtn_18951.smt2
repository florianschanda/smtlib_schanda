(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA0D3C92)))
;; x should be Float32(0xCA0D3C92 [Rational(-4628041, 2), -2314020.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 31666037.0 16.0))))
;; w should be Float32(0x49F197BA [Rational(7916509, 4), 1979127.250000])

(assert (not (distinct x w)))
(check-sat)
(exit)
