(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49561E18)))
;; x should be Float32(0x49561E18 [Rational(1754051, 2), 877025.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 5254113.0 8.0)))))
;; w should be Float32(0xC92057C2 [Rational(-5254113, 8), -656764.125000])

(assert (not (distinct x w)))
(check-sat)
(exit)
