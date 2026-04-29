(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010010 #b10010100110110100111000)))
;; x should be Float32(0xC94A6D38 [Rational(-1658279, 2), -829139.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 5306492887.0 6400.0)))))
;; w should be Float32(0xC94A6D38 [Rational(-1658279, 2), -829139.500000])

(assert (not (= x w)))
(check-sat)
(exit)
