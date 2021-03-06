(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; on low bound (exclusive)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b01010000110011000001100)))
;; x should be Float32(0xC9A8660C [Rational(-2759043, 2), -1379521.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 11036173.0 8.0)))))
;; w should be Float32(0xC9A8660D [Rational(-11036173, 8), -1379521.625000])

(assert (not (distinct x w)))
(check-sat)
(exit)
