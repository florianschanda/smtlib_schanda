(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x46DE8500)))
;; x should be Float32(0x46DE8500 [Rational(56965, 2), 28482.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 455721.0 16.0))))
;; w should be Float32(0x46DE8520 [Rational(455721, 16), 28482.562500])

(assert (not (distinct x w)))
(check-sat)
(exit)
