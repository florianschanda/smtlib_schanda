(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCB4A6703)))
;; x should be Float32(0xCB4A6703 [Rational(-13264643), -13264643.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP 5342408.0)))
;; w should be Float32(0x4AA30990 [Rational(5342408), 5342408.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
