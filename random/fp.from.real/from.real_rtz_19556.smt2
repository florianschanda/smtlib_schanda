(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b11100100 #b11101011011001101100011)))
;; x should be Float32(0xF275B363 [Rational(-4866604329102231331502074888192), -4866604329102231331502074888192.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- 4866604631333686235159368564737.0))))
;; w should be Float32(0xF275B364 [Rational(-4866604631333686235159368564736), -4866604631333686235159368564736.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
