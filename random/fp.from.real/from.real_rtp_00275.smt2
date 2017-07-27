(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF7FFFFF)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- 255452225887413485348378999205302220295.0))))
;; w should be Float32(0xFF402E4F [Rational(-255452223156555138150406850237821878272), -255452223156555138150406850237821878272.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
