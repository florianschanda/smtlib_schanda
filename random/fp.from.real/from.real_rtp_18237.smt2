(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10001011000001010110110)))
;; x should be Float32(0x4A4582B6 [Rational(6472027, 2), 3236013.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 51776225.0 16.0))))
;; w should be Float32(0x4A4582B9 [Rational(12944057, 4), 3236014.250000])

(assert (not (distinct x w)))
(check-sat)
(exit)
