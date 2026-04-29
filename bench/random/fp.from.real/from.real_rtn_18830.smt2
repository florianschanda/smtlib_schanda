(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0D633A51)))
;; x should be Float32(0x0D633A51 [Rational(14891601, 21267647932558653966460912964485513216), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 41212667057.0 106338239662793269832304564822427566080000.0)))))
;; w should be Float32(0x8CFB8ACB [Rational(-16485067, 42535295865117307932921825928971026432), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
