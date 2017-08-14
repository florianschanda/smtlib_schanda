(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10001011000001010110110)))
;; x should be Float32(0x4A4582B6 [Rational(6472027, 2), 3236013.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 647202693.0 200.0))))
;; w should be Float32(0x4A4582B6 [Rational(6472027, 2), 3236013.500000])

(assert (not (= x w)))
(check-sat)
(exit)
