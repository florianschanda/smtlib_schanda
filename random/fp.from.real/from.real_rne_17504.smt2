(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAA81A4D)))
;; x should be Float32(0xCAA81A4D [Rational(-11016781, 2), -5508390.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 1410148079.0 256.0)))))
;; w should be Float32(0xCAA81A4E [Rational(-5508391), -5508391.000000])

(assert (distinct x w))
(check-sat)
(exit)
