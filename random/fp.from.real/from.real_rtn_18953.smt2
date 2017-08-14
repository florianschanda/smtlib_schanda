(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01101010011010010000011)))
;; x should be Float32(0xCAB53483 [Rational(-11875459, 2), -5937729.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 148443232.0 25.0)))))
;; w should be Float32(0xCAB53483 [Rational(-11875459, 2), -5937729.500000])

(assert (not (= x w)))
(check-sat)
(exit)
