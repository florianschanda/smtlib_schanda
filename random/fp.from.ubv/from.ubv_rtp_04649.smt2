(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b11101011001011011110000000111100100011100011111101000001110010101011111011100000111110011100000000011101111000010001001101111001))
;; x should be 312606780425553610620798429976334504825

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r (fp #b0 #b11111110 #b11010110010110111100001))))
(check-sat)
(exit)
