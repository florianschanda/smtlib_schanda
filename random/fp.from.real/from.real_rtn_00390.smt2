(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC15CE45E)))
;; x should be Float32(0xC15CE45E [Rational(-7238191, 524288), -13.805754])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 904773939.0 65536000.0)))))
;; w should be Float32(0xC15CE460 [Rational(-452387, 32768), -13.805756])

(assert (not (distinct x w)))
(check-sat)
(exit)
