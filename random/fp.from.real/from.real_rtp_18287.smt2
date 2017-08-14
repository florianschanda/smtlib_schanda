(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10001101 #b10111101000010100000000)))
;; x should be Float32(0x46DE8500 [Rational(56965, 2), 28482.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 29166079.0 1024.0))))
;; w should be Float32(0x46DE8500 [Rational(56965, 2), 28482.500000])

(assert (not (= x w)))
(check-sat)
(exit)
