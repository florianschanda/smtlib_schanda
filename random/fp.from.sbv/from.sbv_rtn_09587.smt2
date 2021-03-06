(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsle x #b11111001111010100111111000000001100010111000011000011010101000011111100001110010110010011000111000110101011111010000000011100111))
;; x should be -8087042799578500626160489912179293977

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTN x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #xC7985607F9D1E796))))
(check-sat)
(exit)
