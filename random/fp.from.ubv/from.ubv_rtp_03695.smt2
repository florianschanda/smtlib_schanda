(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1101001111101100000001000000011111001010001001001010011010011001))
;; x should be 15270584868009191065

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.eq r ((_ to_fp 11 53) #x43EA7D8080F94495)))
(check-sat)
(exit)
