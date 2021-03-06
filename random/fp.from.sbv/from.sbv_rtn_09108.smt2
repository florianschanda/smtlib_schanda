(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b01011101000100011110100110111000101000100010011001001111011100001010001011010011110101101111100011001110111011001110010000110011))
;; x should be 123711213084194707630509669783142458419

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTN x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x47D7447A6E288993))))
(check-sat)
(exit)
