(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC424E000)))
;; x should be Float32(0xC424E000 [Rational(-1319, 2), -659.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 10559.0 16.0)))))
;; w should be Float32(0xC424FC00 [Rational(-10559, 16), -659.937500])

(assert (not (distinct x w)))
(check-sat)
(exit)
