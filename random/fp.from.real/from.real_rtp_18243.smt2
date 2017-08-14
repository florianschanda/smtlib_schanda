(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11101010001100010000111)))
;; x should be Float32(0x4AF51887 [Rational(16062599, 2), 8031299.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 64250399.0 8.0))))
;; w should be Float32(0x4AF51888 [Rational(8031300), 8031300.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
