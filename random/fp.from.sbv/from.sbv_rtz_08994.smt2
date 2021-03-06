(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b01110111011000010111101101110100010111100100001110111010000010010000110010100110101110010000100001111011101101010001100000000001))
;; x should be 158684288249704435445864551133207664641

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
