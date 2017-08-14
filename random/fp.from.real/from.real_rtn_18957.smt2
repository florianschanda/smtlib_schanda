(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB53483)))
;; x should be Float32(0xCAB53483 [Rational(-11875459, 2), -5937729.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN 4815994.0)))
;; w should be Float32(0x4A92F8F4 [Rational(4815994), 4815994.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
