(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -halfpoint)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9213D88)))
;; x should be Float32(0xC9213D88 [Rational(-1320881, 2), -660440.500000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b11001001001000010011110110001000

(assert (not (= y #b11001001001000010011110110001000)))
(check-sat)
(exit)
