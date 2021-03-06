(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b11010111100100101111000100001101100110010001100101000110011101100011100000110000011011001101110101001000110100010110110011111110))
;; x should be -53735383347773110822707458423974171394

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTZ x)))
(assert (fp.geq r (fp #b1 #b11110 #b1111111111)))
(check-sat)
(exit)
