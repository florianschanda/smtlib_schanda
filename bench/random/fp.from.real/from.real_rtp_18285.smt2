(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A9E0EA3)))
;; x should be Float32(0x4A9E0EA3 [Rational(10358435, 2), 5179217.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP 5179218.0)))
;; w should be Float32(0x4A9E0EA4 [Rational(5179218), 5179218.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
