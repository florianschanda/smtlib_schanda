(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x42F65439)))
;; x should be Float32(0x42F65439 [Rational(16143417, 131072), 123.164497])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 161434172951.0 1310720000.0))))
;; w should be Float32(0x42F6543A [Rational(8071709, 65536), 123.164505])

(assert (not (distinct x w)))
(check-sat)
(exit)
