(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0000110101011101100011101110001010000010011011000000110111111000))
;; x should be 963082998829026808

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTN x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x43AABB1DC504D81B))))
(check-sat)
(exit)
