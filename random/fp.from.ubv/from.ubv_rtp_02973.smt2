(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvule x #b0011100100111011000010110111110000101101100101111111001011000001))
;; x should be 4123902511756604097

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10111100 #b11001001110110000101110))))
(check-sat)
(exit)
