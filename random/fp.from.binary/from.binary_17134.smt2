(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -halfpoint)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA943E4D)))
;; x should be Float32(0xCA943E4D [Rational(-9715277, 2), -4857638.500000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b11001010100101000011111001001101

(assert (not (= y #b11001010100101000011111001001101)))
(check-sat)
(exit)
