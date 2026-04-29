(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11000001101001001100010)))
;; x should be Float32(0x4A60D262 [Rational(7366961, 2), 3683480.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 3729097351.0 1024.0)))))
;; w should be Float32(0xCA5E4583 [Rational(-14566787, 4), -3641696.750000])

(assert (distinct x w))
(check-sat)
(exit)
