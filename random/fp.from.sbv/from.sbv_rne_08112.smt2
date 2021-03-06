(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0100111010001101011010000101101100001101001110001011000000111011))
;; x should be 5660295046947713083

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNE x)))
(assert (fp.eq r ((_ to_fp 11 53) #x43D3A35A16C34E2C)))
(check-sat)
(exit)
