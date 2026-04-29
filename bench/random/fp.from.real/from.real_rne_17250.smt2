(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A72272E)))
;; x should be Float32(0x4A72272E [Rational(7934871, 2), 3967435.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 1776978081.0 1024.0))))
;; w should be Float32(0x49D3D511 [Rational(13882641, 8), 1735330.125000])

(assert (distinct x w))
(check-sat)
(exit)
