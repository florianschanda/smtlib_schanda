(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xD6D7A031)))
;; x should be Float32(0xD6D7A031 [Rational(-118541508411392), -118541508411392.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- 60598355327159.0))))
;; w should be Float32(0xD65C749D [Rational(-60598352084992), -60598352084992.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
