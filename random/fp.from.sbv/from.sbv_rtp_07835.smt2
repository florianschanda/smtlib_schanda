(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsge x #b0000101011001001111001110010111011011100110000011010110001010110))
;; x should be 777406599156313174

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTP x)))
(assert (fp.geq r (fp #b0 #b10000111010 #b0101100100111100111001011101101110011000001101011001)))
(check-sat)
(exit)
