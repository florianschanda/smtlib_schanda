(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A4C972E)))
;; x should be Float32(0x4A4C972E [Rational(6704023, 2), 3352011.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 53632189.0 16.0))))
;; w should be Float32(0x4A4C9730 [Rational(3352012), 3352012.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
