(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; on high bound (exclusive)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC98FB90C)))
;; x should be Float32(0xC98FB90C [Rational(-2354755, 2), -1177377.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 9419019.0 8.0)))))
;; w should be Float32(0xC98FB90B [Rational(-9419019, 8), -1177377.375000])

(assert (not (distinct x w)))
(check-sat)
(exit)
