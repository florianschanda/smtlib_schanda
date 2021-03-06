(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b00011000010000001101001011000110001111100100010001110011001011110111000101011111110011010001001001010110101010100001111010110111))
;; x should be 32238053910247976105014357902355996343

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTN x)))
(assert (fp.eq r (fp #b0 #b10001111011 #b1000010000001101001011000110001111100100010001110011)))
(check-sat)
(exit)
